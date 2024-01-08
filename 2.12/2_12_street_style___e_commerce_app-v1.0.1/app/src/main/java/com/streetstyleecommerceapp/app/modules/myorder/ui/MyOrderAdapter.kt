package com.streetstyleecommerceapp.app.modules.myorder.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.databinding.RowMyorderBinding
import com.streetstyleecommerceapp.app.modules.myorder.`data`.model.MyorderRowModel
import kotlin.Int
import kotlin.collections.List

class MyOrderAdapter(
  var list: List<MyorderRowModel>
) : RecyclerView.Adapter<MyOrderAdapter.RowMyorderVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowMyorderVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_myorder,parent,false)
    return RowMyorderVH(view)
  }

  override fun onBindViewHolder(holder: RowMyorderVH, position: Int) {
    val myorderRowModel = MyorderRowModel()
    // TODO uncomment following line after integration with data source
    // val myorderRowModel = list[position]
    holder.binding.myorderRowModel = myorderRowModel
  }

  override fun getItemCount(): Int = 7
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<MyorderRowModel>) {
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
      item: MyorderRowModel
    ) {
    }
  }

  inner class RowMyorderVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowMyorderBinding = RowMyorderBinding.bind(itemView)
  }
}
