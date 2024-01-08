package com.ecommerce.app.modules.productdetail.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.ecommerce.app.R
import com.ecommerce.app.databinding.RowProducts1Binding
import com.ecommerce.app.modules.productdetail.`data`.model.Products1RowModel
import kotlin.Int
import kotlin.collections.List

class ProductsAdapter(
  var list: List<Products1RowModel>
) : RecyclerView.Adapter<ProductsAdapter.RowProducts1VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowProducts1VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_products1,parent,false)
    return RowProducts1VH(view)
  }

  override fun onBindViewHolder(holder: RowProducts1VH, position: Int) {
    val products1RowModel = Products1RowModel()
    // TODO uncomment following line after integration with data source
    // val products1RowModel = list[position]
    holder.binding.products1RowModel = products1RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Products1RowModel>) {
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
      item: Products1RowModel
    ) {
    }
  }

  inner class RowProducts1VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowProducts1Binding = RowProducts1Binding.bind(itemView)
  }
}
