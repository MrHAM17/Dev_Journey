package com.vertexrealestateapp.app.modules.notification.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.databinding.RowChartlineBinding
import com.vertexrealestateapp.app.modules.notification.`data`.model.ChartlineRowModel
import kotlin.Int
import kotlin.collections.List

class ChartLineAdapter(
  var list: List<ChartlineRowModel>
) : RecyclerView.Adapter<ChartLineAdapter.RowChartlineVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowChartlineVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_chartline,parent,false)
    return RowChartlineVH(view)
  }

  override fun onBindViewHolder(holder: RowChartlineVH, position: Int) {
    val chartlineRowModel = ChartlineRowModel()
    // TODO uncomment following line after integration with data source
    // val chartlineRowModel = list[position]
    holder.binding.chartlineRowModel = chartlineRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ChartlineRowModel>) {
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
      item: ChartlineRowModel
    ) {
    }
  }

  inner class RowChartlineVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowChartlineBinding = RowChartlineBinding.bind(itemView)
  }
}
