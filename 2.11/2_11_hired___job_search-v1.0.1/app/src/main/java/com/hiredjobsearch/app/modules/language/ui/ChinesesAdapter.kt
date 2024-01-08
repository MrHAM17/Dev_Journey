package com.hiredjobsearch.app.modules.language.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.databinding.RowChinesesBinding
import com.hiredjobsearch.app.modules.language.`data`.model.ChinesesRowModel
import kotlin.Int
import kotlin.collections.List

class ChinesesAdapter(
  var list: List<ChinesesRowModel>
) : RecyclerView.Adapter<ChinesesAdapter.RowChinesesVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowChinesesVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_chineses,parent,false)
    return RowChinesesVH(view)
  }

  override fun onBindViewHolder(holder: RowChinesesVH, position: Int) {
    val chinesesRowModel = ChinesesRowModel()
    // TODO uncomment following line after integration with data source
    // val chinesesRowModel = list[position]
    holder.binding.chinesesRowModel = chinesesRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ChinesesRowModel>) {
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
      item: ChinesesRowModel
    ) {
    }
  }

  inner class RowChinesesVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowChinesesBinding = RowChinesesBinding.bind(itemView)
  }
}
