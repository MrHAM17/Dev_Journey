package com.tikpikshortvideosocialnetworking.app.modules.switchaccount.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowSwitchaccountBinding
import com.tikpikshortvideosocialnetworking.app.modules.switchaccount.`data`.model.SwitchaccountRowModel
import kotlin.Int
import kotlin.collections.List

class SwitchAccountAdapter(
  var list: List<SwitchaccountRowModel>
) : RecyclerView.Adapter<SwitchAccountAdapter.RowSwitchaccountVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSwitchaccountVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_switchaccount,parent,false)
    return RowSwitchaccountVH(view)
  }

  override fun onBindViewHolder(holder: RowSwitchaccountVH, position: Int) {
    val switchaccountRowModel = SwitchaccountRowModel()
    // TODO uncomment following line after integration with data source
    // val switchaccountRowModel = list[position]
    holder.binding.switchaccountRowModel = switchaccountRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SwitchaccountRowModel>) {
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
      item: SwitchaccountRowModel
    ) {
    }
  }

  inner class RowSwitchaccountVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSwitchaccountBinding = RowSwitchaccountBinding.bind(itemView)
  }
}
