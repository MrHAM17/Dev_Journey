package com.banksydigitalbanking.app.modules.mobileprepaidone.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.databinding.RowFortytwoBinding
import com.banksydigitalbanking.app.modules.mobileprepaidone.`data`.model.FortytwoRowModel
import kotlin.Int
import kotlin.collections.List

class FortyTwoAdapter(
  var list: List<FortytwoRowModel>
) : RecyclerView.Adapter<FortyTwoAdapter.RowFortytwoVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFortytwoVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_fortytwo,parent,false)
    return RowFortytwoVH(view)
  }

  override fun onBindViewHolder(holder: RowFortytwoVH, position: Int) {
    val fortytwoRowModel = FortytwoRowModel()
    // TODO uncomment following line after integration with data source
    // val fortytwoRowModel = list[position]
    holder.binding.fortytwoRowModel = fortytwoRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<FortytwoRowModel>) {
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
      item: FortytwoRowModel
    ) {
    }
  }

  inner class RowFortytwoVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFortytwoBinding = RowFortytwoBinding.bind(itemView)
    init {
      binding.linearAngelinaDruff.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, FortytwoRowModel())
      }
    }
  }
}
