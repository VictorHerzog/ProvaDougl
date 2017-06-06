using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LocadoraVeiculos.Models;

namespace LocadoraVeiculos.Controler
{
    public class LocadoraControler
    {
        private static LocadoraDBContainer ctx = new LocadoraDBContainer();

        public static void Adicionar(Carro carro)
        {
            ctx.CarroSet.Add(carro);
            ctx.SaveChanges();


        }

        public static List<Carro> Listar()
        {

            return ctx.CarroSet.ToList();

        }

        public static Carro LocalizarPorID(int id)
        {

            return ctx.CarroSet.Find(id);

        }

        public static void Editar(Carro carro)
        {
            ctx.Entry(carro).State = System.Data.Entity.EntityState.Modified;
            ctx.SaveChanges();

        }

        public static void Excluir(Carro carro)
        {
            ctx.Entry(carro).State = System.Data.Entity.EntityState.Deleted;

            ctx.SaveChanges();

        }


    }
}