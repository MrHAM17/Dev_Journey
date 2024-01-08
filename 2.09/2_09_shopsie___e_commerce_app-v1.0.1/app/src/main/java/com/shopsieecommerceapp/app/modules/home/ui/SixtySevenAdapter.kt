package com.shopsieecommerceapp.app.modules.home.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.databinding.RowSixtysevenBinding
import com.shopsieecommerceapp.app.modules.home.`data`.model.SixtysevenRowModel
import kotlin.Int
import kotlin.collections.List

class SixtySevenAdapter(
  var list: List<SixtysevenRowModel>
) : RecyclerView.Adapter<SixtySevenAdapter.RowSixtysevenVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSixtysevenVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_sixtyseven,parent,false)
    return RowSixtysevenVH(view)
  }

  override fun onBindViewHolder(holder: RowSixtysevenVH, position: Int) {
    val sixtysevenRowModel = SixtysevenRowModel()
    // TODO uncomment following line after integration with data source
    // val sixtysevenRowModel = list[position]
    holder.binding.sixtysevenRowModel = sixtysevenRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SixtysevenRowModel>) {
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
      item: SixtysevenRowModel
    ) {
    }
  }

  inner class RowSixtysevenVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSixtysevenBinding = RowSixtysevenBinding.bind(itemView)
  }
}
