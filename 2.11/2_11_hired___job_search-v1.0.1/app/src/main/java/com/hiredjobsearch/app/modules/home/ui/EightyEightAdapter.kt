package com.hiredjobsearch.app.modules.home.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.databinding.RowEightyeightBinding
import com.hiredjobsearch.app.modules.home.`data`.model.EightyeightRowModel
import kotlin.Int
import kotlin.collections.List

class EightyEightAdapter(
  var list: List<EightyeightRowModel>
) : RecyclerView.Adapter<EightyEightAdapter.RowEightyeightVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowEightyeightVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_eightyeight,parent,false)
    return RowEightyeightVH(view)
  }

  override fun onBindViewHolder(holder: RowEightyeightVH, position: Int) {
    val eightyeightRowModel = EightyeightRowModel()
    // TODO uncomment following line after integration with data source
    // val eightyeightRowModel = list[position]
    holder.binding.eightyeightRowModel = eightyeightRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<EightyeightRowModel>) {
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
      item: EightyeightRowModel
    ) {
    }
  }

  inner class RowEightyeightVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowEightyeightBinding = RowEightyeightBinding.bind(itemView)
    init {
      binding.linearSettings.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, EightyeightRowModel())
      }
    }
  }
}
