package com.baizhi.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import tk.mybatis.mapper.annotation.KeySql;
import tk.mybatis.mapper.code.ORDER;

import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "t_person")
public class Person implements Serializable {
    @Id
    @KeySql(sql = "select t_person_seq.nextval from dual", order = ORDER.BEFORE)
    private Integer id;
    private String name;
    private String mobile;
    private String telphone;
    private String email;
    private String city;
}
