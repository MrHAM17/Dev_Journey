package com.helthiotelehealth.app.modules.pharmacy.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.databinding.RowProductonsaleBinding
import com.helthiotelehealth.app.modules.pharmacy.`data`.model.ProductonsaleRowModel
import kotlin.Int
import kotlin.collections.List

class ProductOnSaleAdapter(
  var list: List<ProductonsaleRowModel>
) : RecyclerView.Adapter<ProductOnSaleAdapter.RowProductonsaleVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowProductonsaleVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_productonsale,parent,false)
    return RowProductonsaleVH(view)
  }

  override fun onBindViewHolder(holder: RowProductonsaleVH, position: Int) {
    val productonsaleRowModel = ProductonsaleRowModel()
    // TODO uncomment following line after integration with data source
    // val productonsaleRowModel = list[position]
    holder.binding.productonsaleRowModel = productonsaleRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ProductonsaleRowModel>) {
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
      item: ProductonsaleRowModel
    ) {
    }
  }

  inner class RowProductonsaleVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowProductonsaleBinding = RowProductonsaleBinding.bind(itemView)
  }
}
