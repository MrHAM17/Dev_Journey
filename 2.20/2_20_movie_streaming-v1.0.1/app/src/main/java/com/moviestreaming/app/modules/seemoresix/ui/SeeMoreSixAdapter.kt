package com.moviestreaming.app.modules.seemoresix.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowSeemoresixBinding
import com.moviestreaming.app.modules.seemoresix.`data`.model.SeemoresixRowModel
import kotlin.Int
import kotlin.collections.List

class SeeMoreSixAdapter(
  var list: List<SeemoresixRowModel>
) : RecyclerView.Adapter<SeeMoreSixAdapter.RowSeemoresixVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSeemoresixVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_seemoresix,parent,false)
    return RowSeemoresixVH(view)
  }

  override fun onBindViewHolder(holder: RowSeemoresixVH, position: Int) {
    val seemoresixRowModel = SeemoresixRowModel()
    // TODO uncomment following line after integration with data source
    // val seemoresixRowModel = list[position]
    holder.binding.seemoresixRowModel = seemoresixRowModel
  }

  override fun getItemCount(): Int = 9
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SeemoresixRowModel>) {
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
      item: SeemoresixRowModel
    ) {
    }
  }

  inner class RowSeemoresixVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSeemoresixBinding = RowSeemoresixBinding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, SeemoresixRowModel())
      }
    }
  }
}
