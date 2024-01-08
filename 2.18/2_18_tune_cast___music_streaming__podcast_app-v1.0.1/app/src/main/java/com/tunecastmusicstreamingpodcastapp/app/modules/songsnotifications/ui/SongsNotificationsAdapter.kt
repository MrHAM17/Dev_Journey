package com.tunecastmusicstreamingpodcastapp.app.modules.songsnotifications.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowSongsnotificationsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.songsnotifications.`data`.model.SongsnotificationsRowModel
import kotlin.Int
import kotlin.collections.List

class SongsNotificationsAdapter(
  var list: List<SongsnotificationsRowModel>
) : RecyclerView.Adapter<SongsNotificationsAdapter.RowSongsnotificationsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSongsnotificationsVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_songsnotifications,parent,false)
    return RowSongsnotificationsVH(view)
  }

  override fun onBindViewHolder(holder: RowSongsnotificationsVH, position: Int) {
    val songsnotificationsRowModel = SongsnotificationsRowModel()
    // TODO uncomment following line after integration with data source
    // val songsnotificationsRowModel = list[position]
    holder.binding.songsnotificationsRowModel = songsnotificationsRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SongsnotificationsRowModel>) {
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
      item: SongsnotificationsRowModel
    ) {
    }
  }

  inner class RowSongsnotificationsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSongsnotificationsBinding = RowSongsnotificationsBinding.bind(itemView)
  }
}
