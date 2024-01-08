package com.banksydigitalbanking.app.modules.mobileprepaidone.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.databinding.RowProfilelist1Binding
import com.banksydigitalbanking.app.modules.mobileprepaidone.`data`.model.Profilelist1RowModel
import kotlin.Int
import kotlin.collections.List

class ProfileListAdapter(
  var list: List<Profilelist1RowModel>
) : RecyclerView.Adapter<ProfileListAdapter.RowProfilelist1VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowProfilelist1VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_profilelist1,parent,false)
    return RowProfilelist1VH(view)
  }

  override fun onBindViewHolder(holder: RowProfilelist1VH, position: Int) {
    val profilelist1RowModel = Profilelist1RowModel()
    // TODO uncomment following line after integration with data source
    // val profilelist1RowModel = list[position]
    holder.binding.profilelist1RowModel = profilelist1RowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Profilelist1RowModel>) {
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
      item: Profilelist1RowModel
    ) {
    }
  }

  inner class RowProfilelist1VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowProfilelist1Binding = RowProfilelist1Binding.bind(itemView)
  }
}
