package com.housitbuyrentsellproperty.app.modules.preferable.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowPreferableBinding
import com.housitbuyrentsellproperty.app.modules.preferable.`data`.model.PreferableRowModel
import kotlin.Int
import kotlin.collections.List

class PreferableAdapter(
  var list: List<PreferableRowModel>
) : RecyclerView.Adapter<PreferableAdapter.RowPreferableVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPreferableVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_preferable,parent,false)
    return RowPreferableVH(view)
  }

  override fun onBindViewHolder(holder: RowPreferableVH, position: Int) {
    val preferableRowModel = PreferableRowModel()
    // TODO uncomment following line after integration with data source
    // val preferableRowModel = list[position]
    holder.binding.preferableRowModel = preferableRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PreferableRowModel>) {
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
      item: PreferableRowModel
    ) {
    }
  }

  inner class RowPreferableVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPreferableBinding = RowPreferableBinding.bind(itemView)
  }
}
