package com.tunecastmusicstreamingpodcastapp.app.modules.podcasts.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowPodcastsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.podcasts.`data`.model.PodcastsRowModel
import kotlin.Int
import kotlin.collections.List

class PodcastsAdapter(
  var list: List<PodcastsRowModel>
) : RecyclerView.Adapter<PodcastsAdapter.RowPodcastsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPodcastsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_podcasts,parent,false)
    return RowPodcastsVH(view)
  }

  override fun onBindViewHolder(holder: RowPodcastsVH, position: Int) {
    val podcastsRowModel = PodcastsRowModel()
    // TODO uncomment following line after integration with data source
    // val podcastsRowModel = list[position]
    holder.binding.podcastsRowModel = podcastsRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PodcastsRowModel>) {
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
      item: PodcastsRowModel
    ) {
    }
  }

  inner class RowPodcastsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPodcastsBinding = RowPodcastsBinding.bind(itemView)
    init {
      binding.linearExploreCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, PodcastsRowModel())
      }
    }
  }
}
