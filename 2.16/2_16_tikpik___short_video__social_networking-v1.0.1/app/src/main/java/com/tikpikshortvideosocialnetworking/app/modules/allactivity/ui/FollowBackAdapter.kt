package com.tikpikshortvideosocialnetworking.app.modules.allactivity.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowFollowbackBinding
import com.tikpikshortvideosocialnetworking.app.modules.allactivity.`data`.model.FollowbackRowModel
import kotlin.Int
import kotlin.collections.List

class FollowBackAdapter(
  var list: List<FollowbackRowModel>
) : RecyclerView.Adapter<FollowBackAdapter.RowFollowbackVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFollowbackVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_followback,parent,false)
    return RowFollowbackVH(view)
  }

  override fun onBindViewHolder(holder: RowFollowbackVH, position: Int) {
    val followbackRowModel = FollowbackRowModel()
    // TODO uncomment following line after integration with data source
    // val followbackRowModel = list[position]
    holder.binding.followbackRowModel = followbackRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<FollowbackRowModel>) {
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
      item: FollowbackRowModel
    ) {
    }
  }

  inner class RowFollowbackVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFollowbackBinding = RowFollowbackBinding.bind(itemView)
  }
}
