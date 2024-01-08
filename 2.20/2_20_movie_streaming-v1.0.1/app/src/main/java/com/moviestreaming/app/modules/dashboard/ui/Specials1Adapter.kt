package com.moviestreaming.app.modules.dashboard.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowSpecials1Binding
import com.moviestreaming.app.modules.dashboard.`data`.model.Specials1RowModel
import kotlin.Int
import kotlin.collections.List

class Specials1Adapter(
  var list: List<Specials1RowModel>
) : RecyclerView.Adapter<Specials1Adapter.RowSpecials1VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSpecials1VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_specials1,parent,false)
    return RowSpecials1VH(view)
  }

  override fun onBindViewHolder(holder: RowSpecials1VH, position: Int) {
    val specials1RowModel = Specials1RowModel()
    // TODO uncomment following line after integration with data source
    // val specials1RowModel = list[position]
    holder.binding.specials1RowModel = specials1RowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Specials1RowModel>) {
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
      item: Specials1RowModel
    ) {
    }
  }

  inner class RowSpecials1VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSpecials1Binding = RowSpecials1Binding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Specials1RowModel())
      }
    }
  }
}
