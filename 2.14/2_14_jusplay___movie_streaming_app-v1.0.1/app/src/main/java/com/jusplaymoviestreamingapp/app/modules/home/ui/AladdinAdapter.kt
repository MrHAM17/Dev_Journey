package com.jusplaymoviestreamingapp.app.modules.home.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.databinding.RowAladdinBinding
import com.jusplaymoviestreamingapp.app.modules.home.`data`.model.AladdinRowModel
import kotlin.Int
import kotlin.collections.List

class AladdinAdapter(
  var list: List<AladdinRowModel>
) : RecyclerView.Adapter<AladdinAdapter.RowAladdinVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAladdinVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_aladdin,parent,false)
    return RowAladdinVH(view)
  }

  override fun onBindViewHolder(holder: RowAladdinVH, position: Int) {
    val aladdinRowModel = AladdinRowModel()
    // TODO uncomment following line after integration with data source
    // val aladdinRowModel = list[position]
    holder.binding.aladdinRowModel = aladdinRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<AladdinRowModel>) {
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
      item: AladdinRowModel
    ) {
    }
  }

  inner class RowAladdinVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAladdinBinding = RowAladdinBinding.bind(itemView)
  }
}
