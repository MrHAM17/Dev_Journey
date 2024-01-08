package com.ecommerce.app.modules.productdetail.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.ecommerce.app.R
import com.ecommerce.app.databinding.RowBlueBinding
import com.ecommerce.app.modules.productdetail.`data`.model.BlueRowModel
import kotlin.Int
import kotlin.collections.List

class BlueAdapter(
  var list: List<BlueRowModel>
) : RecyclerView.Adapter<BlueAdapter.RowBlueVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowBlueVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_blue,parent,false)
    return RowBlueVH(view)
  }

  override fun onBindViewHolder(holder: RowBlueVH, position: Int) {
    val blueRowModel = BlueRowModel()
    // TODO uncomment following line after integration with data source
    // val blueRowModel = list[position]
    holder.binding.blueRowModel = blueRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<BlueRowModel>) {
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
      item: BlueRowModel
    ) {
    }
  }

  inner class RowBlueVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowBlueBinding = RowBlueBinding.bind(itemView)
  }
}
