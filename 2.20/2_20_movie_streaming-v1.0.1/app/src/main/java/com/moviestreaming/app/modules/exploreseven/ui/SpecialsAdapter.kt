package com.moviestreaming.app.modules.exploreseven.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowSpecials7Binding
import com.moviestreaming.app.modules.exploreseven.`data`.model.Specials7RowModel
import kotlin.Int
import kotlin.collections.List

class SpecialsAdapter(
  var list: List<Specials7RowModel>
) : RecyclerView.Adapter<SpecialsAdapter.RowSpecials7VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSpecials7VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_specials7,parent,false)
    return RowSpecials7VH(view)
  }

  override fun onBindViewHolder(holder: RowSpecials7VH, position: Int) {
    val specials7RowModel = Specials7RowModel()
    // TODO uncomment following line after integration with data source
    // val specials7RowModel = list[position]
    holder.binding.specials7RowModel = specials7RowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Specials7RowModel>) {
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
      item: Specials7RowModel
    ) {
    }
  }

  inner class RowSpecials7VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSpecials7Binding = RowSpecials7Binding.bind(itemView)
    init {
      binding.imageDrama.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Specials7RowModel())
      }
    }
  }
}
