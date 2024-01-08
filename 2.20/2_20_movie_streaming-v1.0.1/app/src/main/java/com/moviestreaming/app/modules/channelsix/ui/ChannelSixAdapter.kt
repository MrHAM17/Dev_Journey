package com.moviestreaming.app.modules.channelsix.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowChannelsixBinding
import com.moviestreaming.app.modules.channelsix.`data`.model.ChannelsixRowModel
import kotlin.Int
import kotlin.collections.List

class ChannelSixAdapter(
  var list: List<ChannelsixRowModel>
) : RecyclerView.Adapter<ChannelSixAdapter.RowChannelsixVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowChannelsixVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_channelsix,parent,false)
    return RowChannelsixVH(view)
  }

  override fun onBindViewHolder(holder: RowChannelsixVH, position: Int) {
    val channelsixRowModel = ChannelsixRowModel()
    // TODO uncomment following line after integration with data source
    // val channelsixRowModel = list[position]
    holder.binding.channelsixRowModel = channelsixRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ChannelsixRowModel>) {
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
      item: ChannelsixRowModel
    ) {
    }
  }

  inner class RowChannelsixVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowChannelsixBinding = RowChannelsixBinding.bind(itemView)
  }
}
