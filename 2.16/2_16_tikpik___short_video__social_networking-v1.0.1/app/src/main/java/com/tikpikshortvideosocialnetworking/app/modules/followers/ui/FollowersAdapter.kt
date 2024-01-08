package com.tikpikshortvideosocialnetworking.app.modules.followers.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowFollowersBinding
import com.tikpikshortvideosocialnetworking.app.modules.followers.`data`.model.FollowersRowModel
import kotlin.Int
import kotlin.collections.List

class FollowersAdapter(
  var list: List<FollowersRowModel>
) : RecyclerView.Adapter<FollowersAdapter.RowFollowersVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFollowersVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_followers,parent,false)
    return RowFollowersVH(view)
  }

  override fun onBindViewHolder(holder: RowFollowersVH, position: Int) {
    val followersRowModel = FollowersRowModel()
    // TODO uncomment following line after integration with data source
    // val followersRowModel = list[position]
    holder.binding.followersRowModel = followersRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<FollowersRowModel>) {
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
      item: FollowersRowModel
    ) {
    }
  }

  inner class RowFollowersVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFollowersBinding = RowFollowersBinding.bind(itemView)
    init {
      binding.btnFollow.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, FollowersRowModel())
      }
    }
  }
}
