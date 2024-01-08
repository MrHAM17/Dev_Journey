package com.shopsieecommerceapp.app.modules.productsearch.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.databinding.RowProductsearchBinding
import com.shopsieecommerceapp.app.modules.productsearch.`data`.model.ProductsearchRowModel
import kotlin.Int
import kotlin.collections.List

class ProductSearchAdapter(
  var list: List<ProductsearchRowModel>
) : RecyclerView.Adapter<ProductSearchAdapter.RowProductsearchVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowProductsearchVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_productsearch,parent,false)
    return RowProductsearchVH(view)
  }

  override fun onBindViewHolder(holder: RowProductsearchVH, position: Int) {
    val productsearchRowModel = ProductsearchRowModel()
    // TODO uncomment following line after integration with data source
    // val productsearchRowModel = list[position]
    holder.binding.productsearchRowModel = productsearchRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ProductsearchRowModel>) {
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
      item: ProductsearchRowModel
    ) {
    }
  }

  inner class RowProductsearchVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowProductsearchBinding = RowProductsearchBinding.bind(itemView)
  }
}
