package com.tikpikshortvideosocialnetworking.app.modules.findfriends.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowFindfriendsBinding
import com.tikpikshortvideosocialnetworking.app.modules.findfriends.`data`.model.FindfriendsRowModel
import kotlin.Int
import kotlin.collections.List

class FindFriendsAdapter(
  var list: List<FindfriendsRowModel>
) : RecyclerView.Adapter<FindFriendsAdapter.RowFindfriendsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFindfriendsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_findfriends,parent,false)
    return RowFindfriendsVH(view)
  }

  override fun onBindViewHolder(holder: RowFindfriendsVH, position: Int) {
    val findfriendsRowModel = FindfriendsRowModel()
    // TODO uncomment following line after integration with data source
    // val findfriendsRowModel = list[position]
    holder.binding.findfriendsRowModel = findfriendsRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<FindfriendsRowModel>) {
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
      item: FindfriendsRowModel
    ) {
    }
  }

  inner class RowFindfriendsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFindfriendsBinding = RowFindfriendsBinding.bind(itemView)
    init {
      binding.btnInvite.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, FindfriendsRowModel())
      }
    }
  }
}
