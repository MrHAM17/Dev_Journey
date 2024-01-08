package com.blogapp.app.modules.home.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.blogapp.app.R
import com.blogapp.app.databinding.RowFramethirtysixBinding
import com.blogapp.app.modules.home.`data`.model.FramethirtysixRowModel
import kotlin.Int
import kotlin.collections.List

class FrameThirtySixAdapter(
  var list: List<FramethirtysixRowModel>
) : RecyclerView.Adapter<FrameThirtySixAdapter.RowFramethirtysixVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFramethirtysixVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_framethirtysix,parent,false)
    return RowFramethirtysixVH(view)
  }

  override fun onBindViewHolder(holder: RowFramethirtysixVH, position: Int) {
    val framethirtysixRowModel = FramethirtysixRowModel()
    // TODO uncomment following line after integration with data source
    // val framethirtysixRowModel = list[position]
    holder.binding.framethirtysixRowModel = framethirtysixRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<FramethirtysixRowModel>) {
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
      item: FramethirtysixRowModel
    ) {
    }
  }

  inner class RowFramethirtysixVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFramethirtysixBinding = RowFramethirtysixBinding.bind(itemView)
  }
}
