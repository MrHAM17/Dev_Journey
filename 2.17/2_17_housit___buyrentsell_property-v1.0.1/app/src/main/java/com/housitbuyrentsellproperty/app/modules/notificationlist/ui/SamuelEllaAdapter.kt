package com.housitbuyrentsellproperty.app.modules.notificationlist.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowSamuelellaBinding
import com.housitbuyrentsellproperty.app.modules.notificationlist.`data`.model.SamuelellaRowModel
import kotlin.Int
import kotlin.collections.List

class SamuelEllaAdapter(
  var list: List<SamuelellaRowModel>
) : RecyclerView.Adapter<SamuelEllaAdapter.RowSamuelellaVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSamuelellaVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_samuelella,parent,false)
    return RowSamuelellaVH(view)
  }

  override fun onBindViewHolder(holder: RowSamuelellaVH, position: Int) {
    val samuelellaRowModel = SamuelellaRowModel()
    // TODO uncomment following line after integration with data source
    // val samuelellaRowModel = list[position]
    holder.binding.samuelellaRowModel = samuelellaRowModel
  }

  override fun getItemCount(): Int = 1
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SamuelellaRowModel>) {
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
      item: SamuelellaRowModel
    ) {
    }
  }

  inner class RowSamuelellaVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSamuelellaBinding = RowSamuelellaBinding.bind(itemView)
  }
}
