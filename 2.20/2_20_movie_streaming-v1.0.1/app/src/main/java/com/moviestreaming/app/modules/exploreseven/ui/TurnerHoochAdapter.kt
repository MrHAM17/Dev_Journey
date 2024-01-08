package com.moviestreaming.app.modules.exploreseven.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowTurnerhoochBinding
import com.moviestreaming.app.modules.exploreseven.`data`.model.TurnerhoochRowModel
import kotlin.Int
import kotlin.collections.List

class TurnerHoochAdapter(
  var list: List<TurnerhoochRowModel>
) : RecyclerView.Adapter<TurnerHoochAdapter.RowTurnerhoochVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTurnerhoochVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_turnerhooch,parent,false)
    return RowTurnerhoochVH(view)
  }

  override fun onBindViewHolder(holder: RowTurnerhoochVH, position: Int) {
    val turnerhoochRowModel = TurnerhoochRowModel()
    // TODO uncomment following line after integration with data source
    // val turnerhoochRowModel = list[position]
    holder.binding.turnerhoochRowModel = turnerhoochRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<TurnerhoochRowModel>) {
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
      item: TurnerhoochRowModel
    ) {
    }
  }

  inner class RowTurnerhoochVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTurnerhoochBinding = RowTurnerhoochBinding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, TurnerhoochRowModel())
      }
    }
  }
}
