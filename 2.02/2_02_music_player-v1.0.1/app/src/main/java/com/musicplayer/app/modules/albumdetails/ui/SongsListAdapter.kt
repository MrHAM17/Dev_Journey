package com.musicplayer.app.modules.albumdetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.musicplayer.app.R
import com.musicplayer.app.databinding.RowSongslistBinding
import com.musicplayer.app.modules.albumdetails.`data`.model.SongslistRowModel
import kotlin.Int
import kotlin.collections.List

class SongsListAdapter(
  var list: List<SongslistRowModel>
) : RecyclerView.Adapter<SongsListAdapter.RowSongslistVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSongslistVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_songslist,parent,false)
    return RowSongslistVH(view)
  }

  override fun onBindViewHolder(holder: RowSongslistVH, position: Int) {
    val songslistRowModel = SongslistRowModel()
    // TODO uncomment following line after integration with data source
    // val songslistRowModel = list[position]
    holder.binding.songslistRowModel = songslistRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SongslistRowModel>) {
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
      item: SongslistRowModel
    ) {
    }
  }

  inner class RowSongslistVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSongslistBinding = RowSongslistBinding.bind(itemView)
  }
}
