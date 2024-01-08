package com.streetstyleecommerceapp.app.modules.discover.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.databinding.RowDiscoverBinding
import com.streetstyleecommerceapp.app.modules.discover.`data`.model.DiscoverRowModel
import kotlin.Int
import kotlin.collections.List

class DiscoverAdapter(
  var list: List<DiscoverRowModel>
) : RecyclerView.Adapter<DiscoverAdapter.RowDiscoverVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowDiscoverVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_discover,parent,false)
    return RowDiscoverVH(view)
  }

  override fun onBindViewHolder(holder: RowDiscoverVH, position: Int) {
    val discoverRowModel = DiscoverRowModel()
    // TODO uncomment following line after integration with data source
    // val discoverRowModel = list[position]
    holder.binding.discoverRowModel = discoverRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<DiscoverRowModel>) {
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
      item: DiscoverRowModel
    ) {
    }
  }

  inner class RowDiscoverVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowDiscoverBinding = RowDiscoverBinding.bind(itemView)
  }
}
