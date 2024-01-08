package com.moviestreaming.app.modules.dashboard.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowSpecials2Binding
import com.moviestreaming.app.modules.dashboard.`data`.model.Specials2RowModel
import kotlin.Int
import kotlin.collections.List

class Specials2Adapter(
  var list: List<Specials2RowModel>
) : RecyclerView.Adapter<Specials2Adapter.RowSpecials2VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSpecials2VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_specials2,parent,false)
    return RowSpecials2VH(view)
  }

  override fun onBindViewHolder(holder: RowSpecials2VH, position: Int) {
    val specials2RowModel = Specials2RowModel()
    // TODO uncomment following line after integration with data source
    // val specials2RowModel = list[position]
    holder.binding.specials2RowModel = specials2RowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Specials2RowModel>) {
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
      item: Specials2RowModel
    ) {
    }
  }

  inner class RowSpecials2VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSpecials2Binding = RowSpecials2Binding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Specials2RowModel())
      }
    }
  }
}
