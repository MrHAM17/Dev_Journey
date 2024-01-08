package com.tunecastmusicstreamingpodcastapp.app.modules.searchresulttop.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowFollowBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresulttop.`data`.model.FollowRowModel
import kotlin.Int
import kotlin.collections.List

class FollowAdapter(
  var list: List<FollowRowModel>
) : RecyclerView.Adapter<FollowAdapter.RowFollowVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFollowVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_follow,parent,false)
    return RowFollowVH(view)
  }

  override fun onBindViewHolder(holder: RowFollowVH, position: Int) {
    val followRowModel = FollowRowModel()
    // TODO uncomment following line after integration with data source
    // val followRowModel = list[position]
    holder.binding.followRowModel = followRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<FollowRowModel>) {
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
      item: FollowRowModel
    ) {
    }
  }

  inner class RowFollowVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFollowBinding = RowFollowBinding.bind(itemView)
    init {
      binding.linearSongCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, FollowRowModel())
      }
    }
  }
}
