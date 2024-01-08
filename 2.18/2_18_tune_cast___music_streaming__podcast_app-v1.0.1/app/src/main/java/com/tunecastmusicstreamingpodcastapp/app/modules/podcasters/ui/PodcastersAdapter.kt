package com.tunecastmusicstreamingpodcastapp.app.modules.podcasters.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowPodcastersBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.podcasters.`data`.model.PodcastersRowModel
import kotlin.Int
import kotlin.collections.List

class PodcastersAdapter(
  var list: List<PodcastersRowModel>
) : RecyclerView.Adapter<PodcastersAdapter.RowPodcastersVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPodcastersVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_podcasters,parent,false)
    return RowPodcastersVH(view)
  }

  override fun onBindViewHolder(holder: RowPodcastersVH, position: Int) {
    val podcastersRowModel = PodcastersRowModel()
    // TODO uncomment following line after integration with data source
    // val podcastersRowModel = list[position]
    holder.binding.podcastersRowModel = podcastersRowModel
  }

  override fun getItemCount(): Int = 7
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PodcastersRowModel>) {
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
      item: PodcastersRowModel
    ) {
    }
  }

  inner class RowPodcastersVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPodcastersBinding = RowPodcastersBinding.bind(itemView)
  }
}
