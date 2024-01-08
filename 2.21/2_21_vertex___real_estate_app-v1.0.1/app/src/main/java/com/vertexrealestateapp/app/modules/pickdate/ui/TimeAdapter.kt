package com.vertexrealestateapp.app.modules.pickdate.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.databinding.RowTime1Binding
import com.vertexrealestateapp.app.modules.pickdate.`data`.model.Time1RowModel
import kotlin.Int
import kotlin.collections.List

class TimeAdapter(
  var list: List<Time1RowModel>
) : RecyclerView.Adapter<TimeAdapter.RowTime1VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTime1VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_time1,parent,false)
    return RowTime1VH(view)
  }

  override fun onBindViewHolder(holder: RowTime1VH, position: Int) {
    val time1RowModel = Time1RowModel()
    // TODO uncomment following line after integration with data source
    // val time1RowModel = list[position]
    holder.binding.time1RowModel = time1RowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Time1RowModel>) {
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
      item: Time1RowModel
    ) {
    }
  }

  inner class RowTime1VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTime1Binding = RowTime1Binding.bind(itemView)
  }
}
