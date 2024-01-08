package com.comforthotelbookingapp.app.modules.recentlybooked.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.databinding.RowRecentlybookedBinding
import com.comforthotelbookingapp.app.modules.recentlybooked.`data`.model.RecentlybookedRowModel
import kotlin.Int
import kotlin.collections.List

class RecentlyBookedAdapter(
  var list: List<RecentlybookedRowModel>
) : RecyclerView.Adapter<RecentlyBookedAdapter.RowRecentlybookedVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowRecentlybookedVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_recentlybooked,parent,false)
    return RowRecentlybookedVH(view)
  }

  override fun onBindViewHolder(holder: RowRecentlybookedVH, position: Int) {
    val recentlybookedRowModel = RecentlybookedRowModel()
    // TODO uncomment following line after integration with data source
    // val recentlybookedRowModel = list[position]
    holder.binding.recentlybookedRowModel = recentlybookedRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<RecentlybookedRowModel>) {
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
      item: RecentlybookedRowModel
    ) {
    }
  }

  inner class RowRecentlybookedVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowRecentlybookedBinding = RowRecentlybookedBinding.bind(itemView)
  }
}
