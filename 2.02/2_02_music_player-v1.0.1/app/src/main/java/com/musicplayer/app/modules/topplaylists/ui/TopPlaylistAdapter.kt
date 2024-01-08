package com.musicplayer.app.modules.topplaylists.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.musicplayer.app.R
import com.musicplayer.app.databinding.RowTopplaylistBinding
import com.musicplayer.app.modules.topplaylists.`data`.model.TopplaylistRowModel
import kotlin.Int
import kotlin.collections.List

class TopPlaylistAdapter(
  var list: List<TopplaylistRowModel>
) : RecyclerView.Adapter<TopPlaylistAdapter.RowTopplaylistVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTopplaylistVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_topplaylist,parent,false)
    return RowTopplaylistVH(view)
  }

  override fun onBindViewHolder(holder: RowTopplaylistVH, position: Int) {
    val topplaylistRowModel = TopplaylistRowModel()
    // TODO uncomment following line after integration with data source
    // val topplaylistRowModel = list[position]
    holder.binding.topplaylistRowModel = topplaylistRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<TopplaylistRowModel>) {
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
      item: TopplaylistRowModel
    ) {
    }
  }

  inner class RowTopplaylistVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTopplaylistBinding = RowTopplaylistBinding.bind(itemView)
    init {
      binding.imageRenaissance.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, TopplaylistRowModel())
      }
    }
  }
}
