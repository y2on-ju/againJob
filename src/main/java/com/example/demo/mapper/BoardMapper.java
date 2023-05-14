package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import com.example.demo.domain.Board;

@Mapper
public interface BoardMapper {
	
	@Select("""
			SELECT
				id,
				title,
				body,
				writer,
				inserted
			FROM Board
			ORDER BY id DESC
			""")
	List<Board> selectAll();
	
	@Select("""
			SELECT 
				b.id,
				b.title,
				b.body,
				b.inserted,
				b.writer
			FROM Board b 
			WHERE b.id = #{id}
			""")
	@ResultMap("boardResultMap")
	Board selectById(Integer id);

	@Select("""
			<script>
			<bind name="pattern" value="'%' + search + '%'" />
			SELECT COUNT(*) 
			FROM Job
			
			<where>
				<if test="(type eq 'all') or (type eq 'title')">
				   title  LIKE #{pattern}
				</if>
				<if test="(type eq 'all') or (type eq 'body')">
				OR body   LIKE #{pattern}
				</if>
				<if test="(type eq 'all') or (type eq 'writer')">
				OR writer LIKE #{pattern}
				</if>
			</where>
			
			</script>
			""")
	Integer countAll(String search, String type);

	@Select("""
			<script>
			<bind name="pattern" value="'%' + search + '%'" />
			SELECT
				b.id,
				b.title,
				b.writer,
				b.inserted
			FROM Job b 
			
			<where>
				<if test="(type eq 'all') or (type eq 'title')">
				   title  LIKE #{pattern}
				</if>
				<if test="(type eq 'all') or (type eq 'body')">
				OR body   LIKE #{pattern}
				</if>
				<if test="(type eq 'all') or (type eq 'writer')">
				OR writer LIKE #{pattern}
				</if>
			</where>
			
			GROUP BY b.id
			ORDER BY b.id DESC
			LIMIT #{startIndex}, #{rowPerPage}
			</script>
			""")
	List<Board> selectAllPaging(Integer startIndex, Integer rowPerPage, String search, String type);

}
