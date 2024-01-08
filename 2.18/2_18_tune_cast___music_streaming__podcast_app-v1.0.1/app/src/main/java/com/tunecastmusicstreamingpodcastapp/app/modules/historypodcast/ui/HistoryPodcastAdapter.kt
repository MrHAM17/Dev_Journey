package com.tunecastmusicstreamingpodcastapp.app.modules.historypodcast.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowHistorypodcastBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.historypodcast.`data`.model.HistorypodcastRowModel
import kotlin.Int
import kotlin.collections.List

class HistoryPodcastAdapter(
  var list: List<HistorypodcastRowModel>
) : RecyclerView.Adapter<HistoryPodcastAdapter.RowHistorypodcastVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowHistorypodcastVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_historypodcast,parent,false)
    return RowHistorypodcastVH(view)
  }

  override fun onBindViewHolder(holder: RowHistorypodcastVH, position: Int) {
    val historypodcastRowModel = HistorypodcastRowModel()
    // TODO uncomment following line after integration with data source
    // val historypodcastRowModel = list[position]
    holder.binding.historypodcastRowModel = historypodcastRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<HistorypodcastRowModel>) {
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
      item: HistorypodcastRowModel
    ) {
    }
  }

  inner class RowHistorypodcastVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowHistorypodcastBinding = RowHistorypodcastBinding.bind(itemView)
  }
}
