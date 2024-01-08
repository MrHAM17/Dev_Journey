package com.vertexrealestateapp.app.modules.notification.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.databinding.RowSeventyfourBinding
import com.vertexrealestateapp.app.modules.notification.`data`.model.SeventyfourRowModel
import kotlin.Int
import kotlin.collections.List

class SeventyFourAdapter(
  var list: List<SeventyfourRowModel>
) : RecyclerView.Adapter<SeventyFourAdapter.RowSeventyfourVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSeventyfourVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_seventyfour,parent,false)
    return RowSeventyfourVH(view)
  }

  override fun onBindViewHolder(holder: RowSeventyfourVH, position: Int) {
    val seventyfourRowModel = SeventyfourRowModel()
    // TODO uncomment following line after integration with data source
    // val seventyfourRowModel = list[position]
    holder.binding.seventyfourRowModel = seventyfourRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SeventyfourRowModel>) {
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
      item: SeventyfourRowModel
    ) {
    }
  }

  inner class RowSeventyfourVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSeventyfourBinding = RowSeventyfourBinding.bind(itemView)
  }
}
