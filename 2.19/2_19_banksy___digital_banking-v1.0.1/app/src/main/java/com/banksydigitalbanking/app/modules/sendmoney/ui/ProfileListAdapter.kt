package com.banksydigitalbanking.app.modules.sendmoney.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.databinding.RowProfilelistBinding
import com.banksydigitalbanking.app.modules.sendmoney.`data`.model.ProfilelistRowModel
import kotlin.Int
import kotlin.collections.List

class ProfileListAdapter(
  var list: List<ProfilelistRowModel>
) : RecyclerView.Adapter<ProfileListAdapter.RowProfilelistVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowProfilelistVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_profilelist,parent,false)
    return RowProfilelistVH(view)
  }

  override fun onBindViewHolder(holder: RowProfilelistVH, position: Int) {
    val profilelistRowModel = ProfilelistRowModel()
    // TODO uncomment following line after integration with data source
    // val profilelistRowModel = list[position]
    holder.binding.profilelistRowModel = profilelistRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ProfilelistRowModel>) {
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
      item: ProfilelistRowModel
    ) {
    }
  }

  inner class RowProfilelistVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowProfilelistBinding = RowProfilelistBinding.bind(itemView)
  }
}
