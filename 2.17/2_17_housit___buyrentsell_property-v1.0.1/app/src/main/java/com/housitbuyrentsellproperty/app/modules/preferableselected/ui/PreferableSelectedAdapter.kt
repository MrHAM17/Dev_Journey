package com.housitbuyrentsellproperty.app.modules.preferableselected.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowPreferableselectedBinding
import com.housitbuyrentsellproperty.app.modules.preferableselected.`data`.model.PreferableselectedRowModel
import kotlin.Int
import kotlin.collections.List

class PreferableSelectedAdapter(
  var list: List<PreferableselectedRowModel>
) : RecyclerView.Adapter<PreferableSelectedAdapter.RowPreferableselectedVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPreferableselectedVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_preferableselected,parent,false)
    return RowPreferableselectedVH(view)
  }

  override fun onBindViewHolder(holder: RowPreferableselectedVH, position: Int) {
    val preferableselectedRowModel = PreferableselectedRowModel()
    // TODO uncomment following line after integration with data source
    // val preferableselectedRowModel = list[position]
    holder.binding.preferableselectedRowModel = preferableselectedRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PreferableselectedRowModel>) {
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
      item: PreferableselectedRowModel
    ) {
    }
  }

  inner class RowPreferableselectedVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPreferableselectedBinding = RowPreferableselectedBinding.bind(itemView)
  }
}
