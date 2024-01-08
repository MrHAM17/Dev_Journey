package com.jusplaymoviestreamingapp.app.modules.episode.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.databinding.RowEpisodeBinding
import com.jusplaymoviestreamingapp.app.modules.episode.`data`.model.EpisodeRowModel
import kotlin.Int
import kotlin.collections.List

class EpisodeAdapter(
  var list: List<EpisodeRowModel>
) : RecyclerView.Adapter<EpisodeAdapter.RowEpisodeVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowEpisodeVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_episode,parent,false)
    return RowEpisodeVH(view)
  }

  override fun onBindViewHolder(holder: RowEpisodeVH, position: Int) {
    val episodeRowModel = EpisodeRowModel()
    // TODO uncomment following line after integration with data source
    // val episodeRowModel = list[position]
    holder.binding.episodeRowModel = episodeRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<EpisodeRowModel>) {
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
      item: EpisodeRowModel
    ) {
    }
  }

  inner class RowEpisodeVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowEpisodeBinding = RowEpisodeBinding.bind(itemView)
  }
}
