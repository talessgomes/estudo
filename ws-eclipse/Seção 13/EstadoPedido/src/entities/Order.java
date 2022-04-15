package entities;

import java.util.Date;

import entities.enums.OrderStatus;

public class Order {

	private Integer id; //id do pedido;
	private Date moment; //instante que o pedido foi feito; 
	private OrderStatus status; //Status que o pedido foi feito
	
	public Order() { //Construtor vazio
	}
	
	public Order (Integer id, Date moment, OrderStatus status) {
		this.id = id;
		this.moment = moment;
		this.status = status;
	}
	
	public Integer getId() {
		return id;
	}
	
	public void setId (Integer id) {
		this.id = id;
	}
	
	
	public Date getMoment() {
		return moment;
	}
	
	public void setMoment(Date moment) {
		this.moment = moment;
	}
	
	public OrderStatus getStatus() {
		return status;
	}
	
	public void setStatus(OrderStatus status) {
		this.status = status;
	}

	public String toString() {
		return "Order [id = " + id + ", moment = "+ moment + ", status = " + status +"]";
	}

	
	
	
}
