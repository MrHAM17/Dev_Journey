package com.safebankmobilebankingapp.app.modules.history.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.databinding.RowSeventyfiveBinding
import com.safebankmobilebankingapp.app.modules.history.`data`.model.SeventyfiveRowModel
import kotlin.Int
import kotlin.collections.List

class SeventyFiveAdapter(
  var list: List<SeventyfiveRowModel>
) : RecyclerView.Adapter<SeventyFiveAdapter.RowSeventyfiveVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSeventyfiveVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_seventyfive,parent,false)
    return RowSeventyfiveVH(view)
  }

  override fun onBindViewHolder(holder: RowSeventyfiveVH, position: Int) {
    val seventyfiveRowModel = SeventyfiveRowModel()
    // TODO uncomment following line after integration with data source
    // val seventyfiveRowModel = list[position]
    holder.binding.seventyfiveRowModel = seventyfiveRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SeventyfiveRowModel>) {
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
      item: SeventyfiveRowModel
    ) {
    }
  }

  inner class RowSeventyfiveVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSeventyfiveBinding = RowSeventyfiveBinding.bind(itemView)
  }
}
