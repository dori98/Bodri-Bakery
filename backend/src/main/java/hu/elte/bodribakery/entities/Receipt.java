/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hu.elte.bodribakery.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
/**
 *
 * @author stefa
 */
public class Receipt {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String difficulty;

    @Column(nullable = false)
    private Boolean salty;

    @Column(nullable = false)
    private Boolean visibility;

    @Column(nullable = false,length=213123123)

    private String description;

    @ManyToMany

    private List<Ingredient> ingredients;

    @JsonIgnore
    @ManyToOne
    private User user;



    //lista ami ingresientseket tarol
}
