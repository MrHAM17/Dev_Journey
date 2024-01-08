package com.tikpikshortvideosocialnetworking.app.modules.seelive.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowSeeliveBinding
import com.tikpikshortvideosocialnetworking.app.modules.seelive.`data`.model.SeeliveRowModel
import kotlin.Int
import kotlin.collections.List

class SeeLiveAdapter(
  var list: List<SeeliveRowModel>
) : RecyclerView.Adapter<SeeLiveAdapter.RowSeeliveVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSeeliveVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_seelive,parent,false)
    return RowSeeliveVH(view)
  }

  override fun onBindViewHolder(holder: RowSeeliveVH, position: Int) {
    val seeliveRowModel = SeeliveRowModel()
    // TODO uncomment following line after integration with data source
    // val seeliveRowModel = list[position]
    holder.binding.seeliveRowModel = seeliveRowModel
  }

  override fun getItemCount(): Int = 7
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SeeliveRowModel>) {
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
      item: SeeliveRowModel
    ) {
    }
  }

  inner class RowSeeliveVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSeeliveBinding = RowSeeliveBinding.bind(itemView)
  }
}
