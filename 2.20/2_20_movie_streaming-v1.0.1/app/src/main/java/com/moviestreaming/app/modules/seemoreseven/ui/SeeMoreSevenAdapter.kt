package com.moviestreaming.app.modules.seemoreseven.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowSeemoresevenBinding
import com.moviestreaming.app.modules.seemoreseven.`data`.model.SeemoresevenRowModel
import kotlin.Int
import kotlin.collections.List

class SeeMoreSevenAdapter(
  var list: List<SeemoresevenRowModel>
) : RecyclerView.Adapter<SeeMoreSevenAdapter.RowSeemoresevenVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSeemoresevenVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_seemoreseven,parent,false)
    return RowSeemoresevenVH(view)
  }

  override fun onBindViewHolder(holder: RowSeemoresevenVH, position: Int) {
    val seemoresevenRowModel = SeemoresevenRowModel()
    // TODO uncomment following line after integration with data source
    // val seemoresevenRowModel = list[position]
    holder.binding.seemoresevenRowModel = seemoresevenRowModel
  }

  override fun getItemCount(): Int = 9
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SeemoresevenRowModel>) {
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
      item: SeemoresevenRowModel
    ) {
    }
  }

  inner class RowSeemoresevenVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSeemoresevenBinding = RowSeemoresevenBinding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, SeemoresevenRowModel())
      }
    }
  }
}
