/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hu.elte.bodribakery.repositories;

import hu.elte.bodribakery.entities.Receipt;
import hu.elte.bodribakery.entities.customized.CustomizedReceipt;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author stefa
 */

@Repository
public interface ReceiptRepository extends CrudRepository<Receipt, Integer> {

    @Query(value = "SELECT new hu.elte.bodribakery.entities.customized.CustomizedReceipt(r.id, r.name, r.difficulty, rd.description, i.name)" +
            "FROM Receipt r\n" +
            "INNER JOIN ReceiptDescription rd\n" +
            "ON rd.receiptId = r.id\n" +
            "INNER JOIN ReceiptIngredient ri\n" +
            "ON ri.receiptId = r.id\n" +
            "INNER JOIN Ingredient i\n" +
            "ON i.id = ri.ingredientId\n" +
            "WHERE r.visibility = true")
    List<CustomizedReceipt> findVisibleReceipts();
    List<Receipt> findByUserId(Integer id);

    //CustomizedReceipt findByMyId(Integer id);


}

