package com.moviestreaming.app.modules.exploreeight.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowSpecials6Binding
import com.moviestreaming.app.modules.exploreeight.`data`.model.Specials6RowModel
import kotlin.Int
import kotlin.collections.List

class SpecialsAdapter(
  var list: List<Specials6RowModel>
) : RecyclerView.Adapter<SpecialsAdapter.RowSpecials6VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSpecials6VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_specials6,parent,false)
    return RowSpecials6VH(view)
  }

  override fun onBindViewHolder(holder: RowSpecials6VH, position: Int) {
    val specials6RowModel = Specials6RowModel()
    // TODO uncomment following line after integration with data source
    // val specials6RowModel = list[position]
    holder.binding.specials6RowModel = specials6RowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Specials6RowModel>) {
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
      item: Specials6RowModel
    ) {
    }
  }

  inner class RowSpecials6VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSpecials6Binding = RowSpecials6Binding.bind(itemView)
    init {
      binding.imageDrama.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Specials6RowModel())
      }
    }
  }
}
