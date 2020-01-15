package com.undec.corralon.repository;

import com.undec.corralon.modelo.MovimientoArticulo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface MovimientoArticuloRepository extends JpaRepository<MovimientoArticulo, Integer> {
    List<MovimientoArticulo> findMovimientoArticuloByPedidoId_IdEquals(Integer id);

   @Query("SELECT SUM(m.movimiento) FROM MovimientoArticulo m WHERE m.pedidoId=(:id)")
   Integer findAllByArticuloId(@Param("id") Integer id);

//    Integer countMovimientoArticuloByArticuloId(Integer id);

}