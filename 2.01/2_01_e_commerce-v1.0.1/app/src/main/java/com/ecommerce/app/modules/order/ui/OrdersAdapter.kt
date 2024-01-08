package com.ecommerce.app.modules.order.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.ecommerce.app.R
import com.ecommerce.app.databinding.RowOrdersBinding
import com.ecommerce.app.modules.order.`data`.model.OrdersRowModel
import kotlin.Int
import kotlin.collections.List

class OrdersAdapter(
  var list: List<OrdersRowModel>
) : RecyclerView.Adapter<OrdersAdapter.RowOrdersVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowOrdersVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_orders,parent,false)
    return RowOrdersVH(view)
  }

  override fun onBindViewHolder(holder: RowOrdersVH, position: Int) {
    val ordersRowModel = OrdersRowModel()
    // TODO uncomment following line after integration with data source
    // val ordersRowModel = list[position]
    holder.binding.ordersRowModel = ordersRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<OrdersRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: OrdersRowModel
    ) {
    }
  }

  inner class RowOrdersVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowOrdersBinding = RowOrdersBinding.bind(itemView)
  }
}
