package com.socialsocialnetworking.app.modules.invitefriends.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.databinding.RowFriendlistBinding
import com.socialsocialnetworking.app.modules.invitefriends.`data`.model.FriendlistRowModel
import kotlin.Int
import kotlin.collections.List

class FriendListAdapter(
  var list: List<FriendlistRowModel>
) : RecyclerView.Adapter<FriendListAdapter.RowFriendlistVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFriendlistVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_friendlist,parent,false)
    return RowFriendlistVH(view)
  }

  override fun onBindViewHolder(holder: RowFriendlistVH, position: Int) {
    val friendlistRowModel = FriendlistRowModel()
    // TODO uncomment following line after integration with data source
    // val friendlistRowModel = list[position]
    holder.binding.friendlistRowModel = friendlistRowModel
  }

  override fun getItemCount(): Int = 9
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<FriendlistRowModel>) {
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
      item: FriendlistRowModel
    ) {
    }
  }

  inner class RowFriendlistVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFriendlistBinding = RowFriendlistBinding.bind(itemView)
  }
}
