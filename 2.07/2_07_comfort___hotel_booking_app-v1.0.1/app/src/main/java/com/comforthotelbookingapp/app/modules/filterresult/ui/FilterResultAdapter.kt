package com.comforthotelbookingapp.app.modules.filterresult.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.databinding.RowFilterresultBinding
import com.comforthotelbookingapp.app.modules.filterresult.`data`.model.FilterresultRowModel
import kotlin.Int
import kotlin.collections.List

class FilterResultAdapter(
  var list: List<FilterresultRowModel>
) : RecyclerView.Adapter<FilterResultAdapter.RowFilterresultVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFilterresultVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_filterresult,parent,false)
    return RowFilterresultVH(view)
  }

  override fun onBindViewHolder(holder: RowFilterresultVH, position: Int) {
    val filterresultRowModel = FilterresultRowModel()
    // TODO uncomment following line after integration with data source
    // val filterresultRowModel = list[position]
    holder.binding.filterresultRowModel = filterresultRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<FilterresultRowModel>) {
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
      item: FilterresultRowModel
    ) {
    }
  }

  inner class RowFilterresultVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFilterresultBinding = RowFilterresultBinding.bind(itemView)
  }
}
