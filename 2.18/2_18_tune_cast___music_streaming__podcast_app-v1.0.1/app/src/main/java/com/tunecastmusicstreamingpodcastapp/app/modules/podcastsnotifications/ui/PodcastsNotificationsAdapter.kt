package com.tunecastmusicstreamingpodcastapp.app.modules.podcastsnotifications.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowPodcastsnotificationsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.podcastsnotifications.`data`.model.PodcastsnotificationsRowModel
import kotlin.Int
import kotlin.collections.List

class PodcastsNotificationsAdapter(
  var list: List<PodcastsnotificationsRowModel>
) : RecyclerView.Adapter<PodcastsNotificationsAdapter.RowPodcastsnotificationsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPodcastsnotificationsVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_podcastsnotifications,parent,false)
    return RowPodcastsnotificationsVH(view)
  }

  override fun onBindViewHolder(holder: RowPodcastsnotificationsVH, position: Int) {
    val podcastsnotificationsRowModel = PodcastsnotificationsRowModel()
    // TODO uncomment following line after integration with data source
    // val podcastsnotificationsRowModel = list[position]
    holder.binding.podcastsnotificationsRowModel = podcastsnotificationsRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PodcastsnotificationsRowModel>) {
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
      item: PodcastsnotificationsRowModel
    ) {
    }
  }

  inner class RowPodcastsnotificationsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPodcastsnotificationsBinding = RowPodcastsnotificationsBinding.bind(itemView)
  }
}
