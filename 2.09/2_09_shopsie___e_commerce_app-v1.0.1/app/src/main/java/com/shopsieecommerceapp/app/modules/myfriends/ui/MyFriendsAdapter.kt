package com.shopsieecommerceapp.app.modules.myfriends.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.databinding.RowMyfriendsBinding
import com.shopsieecommerceapp.app.modules.myfriends.`data`.model.MyfriendsRowModel
import kotlin.Int
import kotlin.collections.List

class MyFriendsAdapter(
  var list: List<MyfriendsRowModel>
) : RecyclerView.Adapter<MyFriendsAdapter.RowMyfriendsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowMyfriendsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_myfriends,parent,false)
    return RowMyfriendsVH(view)
  }

  override fun onBindViewHolder(holder: RowMyfriendsVH, position: Int) {
    val myfriendsRowModel = MyfriendsRowModel()
    // TODO uncomment following line after integration with data source
    // val myfriendsRowModel = list[position]
    holder.binding.myfriendsRowModel = myfriendsRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<MyfriendsRowModel>) {
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
      item: MyfriendsRowModel
    ) {
    }
  }

  inner class RowMyfriendsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowMyfriendsBinding = RowMyfriendsBinding.bind(itemView)
  }
}
