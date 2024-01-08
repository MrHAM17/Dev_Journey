package com.vertexrealestateapp.app.modules.addnewpropertymeetwithaagent.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.databinding.RowTimeBinding
import com.vertexrealestateapp.app.modules.addnewpropertymeetwithaagent.`data`.model.TimeRowModel
import kotlin.Int
import kotlin.collections.List

class TimeAdapter(
  var list: List<TimeRowModel>
) : RecyclerView.Adapter<TimeAdapter.RowTimeVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTimeVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_time,parent,false)
    return RowTimeVH(view)
  }

  override fun onBindViewHolder(holder: RowTimeVH, position: Int) {
    val timeRowModel = TimeRowModel()
    // TODO uncomment following line after integration with data source
    // val timeRowModel = list[position]
    holder.binding.timeRowModel = timeRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<TimeRowModel>) {
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
      item: TimeRowModel
    ) {
    }
  }

  inner class RowTimeVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTimeBinding = RowTimeBinding.bind(itemView)
  }
}
