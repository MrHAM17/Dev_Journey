package com.tikpikshortvideosocialnetworking.app.modules.allactivity.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowFollowback1Binding
import com.tikpikshortvideosocialnetworking.app.modules.allactivity.`data`.model.Followback1RowModel
import kotlin.Int
import kotlin.collections.List

class FollowBack1Adapter(
  var list: List<Followback1RowModel>
) : RecyclerView.Adapter<FollowBack1Adapter.RowFollowback1VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFollowback1VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_followback1,parent,false)
    return RowFollowback1VH(view)
  }

  override fun onBindViewHolder(holder: RowFollowback1VH, position: Int) {
    val followback1RowModel = Followback1RowModel()
    // TODO uncomment following line after integration with data source
    // val followback1RowModel = list[position]
    holder.binding.followback1RowModel = followback1RowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Followback1RowModel>) {
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
      item: Followback1RowModel
    ) {
    }
  }

  inner class RowFollowback1VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFollowback1Binding = RowFollowback1Binding.bind(itemView)
    init {
      binding.btnFollowBack.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Followback1RowModel())
      }
    }
  }
}
