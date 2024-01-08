package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultprofile.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowFollowingBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultprofile.`data`.model.FollowingRowModel
import kotlin.Int
import kotlin.collections.List

class FollowingAdapter(
  var list: List<FollowingRowModel>
) : RecyclerView.Adapter<FollowingAdapter.RowFollowingVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFollowingVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_following,parent,false)
    return RowFollowingVH(view)
  }

  override fun onBindViewHolder(holder: RowFollowingVH, position: Int) {
    val followingRowModel = FollowingRowModel()
    // TODO uncomment following line after integration with data source
    // val followingRowModel = list[position]
    holder.binding.followingRowModel = followingRowModel
  }

  override fun getItemCount(): Int = 1
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<FollowingRowModel>) {
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
      item: FollowingRowModel
    ) {
    }
  }

  inner class RowFollowingVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFollowingBinding = RowFollowingBinding.bind(itemView)
    init {
      binding.btnFollowing.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, FollowingRowModel())
      }
      binding.linearArtist.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, FollowingRowModel())
      }
    }
  }
}
