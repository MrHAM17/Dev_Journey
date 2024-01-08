package com.fashionistaecommerceapp.app.modules.discountitems.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.databinding.RowDiscountitemsBinding
import com.fashionistaecommerceapp.app.modules.discountitems.`data`.model.DiscountitemsRowModel
import kotlin.Int
import kotlin.collections.List

class DiscountItemsAdapter(
  var list: List<DiscountitemsRowModel>
) : RecyclerView.Adapter<DiscountItemsAdapter.RowDiscountitemsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowDiscountitemsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_discountitems,parent,false)
    return RowDiscountitemsVH(view)
  }

  override fun onBindViewHolder(holder: RowDiscountitemsVH, position: Int) {
    val discountitemsRowModel = DiscountitemsRowModel()
    // TODO uncomment following line after integration with data source
    // val discountitemsRowModel = list[position]
    holder.binding.discountitemsRowModel = discountitemsRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<DiscountitemsRowModel>) {
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
      item: DiscountitemsRowModel
    ) {
    }
  }

  inner class RowDiscountitemsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowDiscountitemsBinding = RowDiscountitemsBinding.bind(itemView)
  }
}
