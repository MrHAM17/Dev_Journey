package com.moviestreaming.app.modules.seemorefive.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowSeemorefiveBinding
import com.moviestreaming.app.modules.seemorefive.`data`.model.SeemorefiveRowModel
import kotlin.Int
import kotlin.collections.List

class SeeMoreFiveAdapter(
  var list: List<SeemorefiveRowModel>
) : RecyclerView.Adapter<SeeMoreFiveAdapter.RowSeemorefiveVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSeemorefiveVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_seemorefive,parent,false)
    return RowSeemorefiveVH(view)
  }

  override fun onBindViewHolder(holder: RowSeemorefiveVH, position: Int) {
    val seemorefiveRowModel = SeemorefiveRowModel()
    // TODO uncomment following line after integration with data source
    // val seemorefiveRowModel = list[position]
    holder.binding.seemorefiveRowModel = seemorefiveRowModel
  }

  override fun getItemCount(): Int = 9
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SeemorefiveRowModel>) {
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
      item: SeemorefiveRowModel
    ) {
    }
  }

  inner class RowSeemorefiveVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSeemorefiveBinding = RowSeemorefiveBinding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, SeemorefiveRowModel())
      }
    }
  }
}
